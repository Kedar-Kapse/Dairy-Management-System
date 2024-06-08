package com.dairy.mypkg.Controller;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.dairy.mypkg.DairyManagementApplication;
import com.dairy.mypkg.Entity.*;
import com.dairy.mypkg.Repository.*;

import jakarta.servlet.http.HttpSession;
import jakarta.transaction.Transactional;

@Controller
public class Dairy_Controller {

	
	
    @Autowired
    private User_Repository userrepo;

    @Autowired
    private Contact_Us_Repository contactrepo;

    @Autowired
    private Admin_Repository Adminrepo;

    @Autowired
    private ProductRepository prorepo;

    @Autowired
    private CartInfoRepository cartrepo;

    static String email;
    
    @Autowired
    private DairyManagementApplication dairyManagementApplication;
    
    @Autowired
    private OrderPlacedRepository orderrepo;

    @RequestMapping("/")
    public String Landing_Page() {
        return "Landing_Page";
    }

    //---------------------------------Sign up-----------------------------------------

    @RequestMapping("/SignUpSuccess")
    public String SignUpSucess(@ModelAttribute User_Entity usersignup, HttpSession session) {
        if (!userrepo.existsByEmail(usersignup.getEmail())) {
            userrepo.save(usersignup);
            String message = "SignUp Successfully";
            String subject = "Thank you for registering with our application.";
            String to = usersignup.getEmail();
            DairyManagementApplication obj = new DairyManagementApplication();
            obj.sentMessage(message, subject, to, obj.getFrom());
        }

        return "Landing_Page";
    }



    //---------------------------------Login Page-----------------------------------------


    @RequestMapping("/LoginSucess")
    public String loginSucess(@RequestParam String email, @RequestParam String password, Model model, HttpSession userLog) {

        Dairy_Controller.email = email;

        System.out.println(email);
        System.out.println(password);
        int status = 0;
        User_Entity userE = userrepo.findByEmail(email);
        if (userE != null && userE.getEmail().equals(email) && userE.getPassword().equals(password)) {
            status++;
            userLog.setAttribute("loggedin", userE);
        }
        if (status > 0) {
            String Message = "Dear User,\n\n" + userE.getEmail() +
                    " Welcome to Dairy Management! We're excited to have you join us.\n\n" +
                    "As you begin your journey with us, we want to emphasize the importance of your security. Please remember: never share your OTP (One Time Password) with anyone, including our team. Your safety is paramount.\n\n" +
                    "\n\n";
            String Subject = "Best regards,\n The Dairy Management Team";
            String to = userE.getEmail();
            DairyManagementApplication obj = new DairyManagementApplication();
            obj = obj.getObj();
            obj.sendLoginRequestEmail(Message, Subject, to, obj.getFrom());
            userLog.setAttribute("generatedOTP", obj.getOTP(obj));
            return "ConfirmOTP";

        } else {
            return "Login";
        }
    }

    //----------------------------Confirm OTP --------------------------------------------

    @PostMapping("/confirmOTP")
    public String confirmOTP(@RequestParam String otp, @SessionAttribute("generatedOTP") String generatedOTP, RedirectAttributes redirectAttributes, Model model) {
        System.out.println("Received OTP: " + otp);
        System.out.println("Generated OTP: " + generatedOTP);

        if (otp.equals(generatedOTP)) {
            try {
                Thread.sleep(3000);
            } catch (Exception e) {
                System.out.println(e);
            }

            // Fetch products from the database
            List<Products> products = getAllProducts();
            model.addAttribute("products", products);

            return "redirect:/Access_Products";
        } else {
            System.out.println("Invalid OTP");
            redirectAttributes.addFlashAttribute("error", "Invalid OTP. Please try again.");
            return "WrongOTP";
        }
    }

    @RequestMapping("/enterOTP")
    public String enterOTP() {
        return "ConfirmOTP";
    }

    @RequestMapping("/Access_Products")
    public String DashboardAccess(Model model) {
        List<Products> products = getAllProducts();
        model.addAttribute("products", products);
        return "Product_Dashboard";
    }

    public List<Products> getAllProducts() {
        return prorepo.findAll();
    }

  //----------------------------------Dashboard------------------------------------

    @PostMapping("/addMultipleToCart")
    public String addMultipleToCart(@RequestParam("selectedProducts") List<Long> selectedProductIds,
                                    @RequestParam("quantities") List<Integer> quantities,
                                    HttpSession session) {
        // Get the selected products and their quantities
        List<Products> selectedProducts = prorepo.findAllById(selectedProductIds);

        // Add the selected products to the cart with their quantities
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        for (int i = 0; i < selectedProducts.size(); i++) {
            Products selectedProduct = selectedProducts.get(i);
            int quantity = quantities.get(i);
            cart.addProduct(selectedProduct, quantity);
        }

        // Redirect the user to the cart page
        return "redirect:/cart";
    }

    @GetMapping("/cart")
    public String viewCart(Model model, HttpSession session) {
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        double totalPrice = calculateTotalPrice(cart);
        model.addAttribute("cart", cart);
        model.addAttribute("totalPrice", totalPrice);

        return "cart";
    }

    @GetMapping("/checkout")
    public String showCheckoutForm(Model model) {
        // Display the checkout form
        return "checkout";
    }

    @PostMapping("/checkout")
    public String processCheckout(@RequestParam("name") String name,
                                  @RequestParam("email") String email,
                                  @RequestParam("address") String address,
                                  @RequestParam("mobileNumber") String mobileNumber,
                                  @RequestParam("productNames") String productNames,
                                  @RequestParam("totalPrice") double totalPrice) {

        // Create a new CartInfo object with the checkout information
        CartInfo cartInfo = new CartInfo(name, email, address, mobileNumber, productNames, totalPrice);

        // Save the CartInfo object to the database
        cartrepo.save(cartInfo);

        // Redirect the user to a thank you page or any other appropriate page
        return "Payment";
    }

    private double calculateTotalPrice(Cart cart) {
        double totalPrice = 0.0;
        for (Item cartItem : cart.getItems()) {
            totalPrice += cartItem.getProduct().getPrice() * cartItem.getQuantity();
        }
        return totalPrice;
    }


    //--------------------------------About Us -------------------------------------

    @RequestMapping("/About_Us")
    public String About_Us() {
        return "About_Us";
    }

    //---------------------------------Services -------------------------------------

    @RequestMapping("/Services")
    public String ServicesPage() {
        return "Services";
    }

    @RequestMapping("/Landing_Page")
    public String Home() {
        return "Landing_Page";
    }

    //------------------------Contact Us Page -------------------------------------------------

    @RequestMapping("/Contact")
    public String Contact_Page(@ModelAttribute("Contact_Us") Contact_Us contact_Us) {
        return "Contact";
    }

    @RequestMapping("/Contact_Sucess")
    public String ContactSave(@ModelAttribute Contact_Us contactsave) {
        contactrepo.save(contactsave);
        return "Landing_Page";
    }

    //--------------------------------------Admin Login Start ----------------------------------

    @RequestMapping("/Admin_Login")
    public String Admin_Login_Page() {
        return "Admin_Login";
    }

    @RequestMapping("/Adminlogsucess")
    public String AdmininfoSave(@RequestParam String email, @RequestParam String password, Model model, HttpSession AdminLog) {
        System.out.println(email);
        System.out.println(password);

        int status = 0;
        Admin_Entity AdminE = Adminrepo.findByEmail(email);
        if (AdminE != null && AdminE.getEmail().equals(email) && AdminE.getPassword().equals(password)) {
            status++;
            AdminLog.setAttribute("loggedin", AdminLog);
        }
        if (status > 0) {
            return "Admin_Dashboard";
        } else {
            return "Admin_Login";
        }
    }

    @GetMapping("/ListAllData")
    public String listAllData(Model model) {
        List<User_Entity> userList = userrepo.findAll();
        model.addAttribute("customersList", userList);
        return "Customers";
    }

    @RequestMapping("delete/{id}")
    public String Delete_User(@PathVariable long id) {
        userrepo.deleteById(id);
        return "redirect:/ListAllData";
    }

    @GetMapping("/edit/{id}")
    public String Edit_User(@PathVariable long id, Model m) {
        User_Entity custo = userrepo.findById(id).orElse(null);
        m.addAttribute("custo", custo);
        return "User_Update";
    }

    @PostMapping("/Update/{id}")
    public String updateUserData(@PathVariable long id, @ModelAttribute User_Entity updatedCusto) {
        Optional<User_Entity> userOptional = userrepo.findById(id);

        if (userOptional.isPresent()) {
            User_Entity custo = userOptional.get();
            custo.setFirstName(updatedCusto.getFirstName());
            custo.setLastName(updatedCusto.getLastName());
            custo.setEmail(updatedCusto.getEmail());
            custo.setPassword(updatedCusto.getPassword());
            userrepo.save(custo);
        } else {
            return "redirect:/error";
        }
        return "redirect:/ListAllData";
    }

    @RequestMapping("/Admin_Dashboard")
    public String ReturnAdmin() {
        return "Admin_Dashboard";
    }
    
    @GetMapping("/showAllOrders")
    public String showAllOrders(Model model) {
        List<CartInfo> cartInfoList = cartrepo.findAll();
        model.addAttribute("cartInfoList", cartInfoList);
        return "Allorders";
    }
    
    @PostMapping("/sendReceiptEmail")
    @Transactional
    public String sendReceiptEmail(
            @RequestParam String orderId,
            @RequestParam String email,
            @RequestParam String name,
            @RequestParam double totalPrice,
            @RequestParam String address,
            @RequestParam String productNames,
            @RequestParam String mobileNumber) {

        dairyManagementApplication.sendReceiptEmail(orderId, email, name, totalPrice, address, productNames, mobileNumber);

        
        
        // Create a new entry in the orderPlaced table
        OrderPlaced orderPlaced = new OrderPlaced();
        orderPlaced.setOrderId(orderId);
        orderPlaced.setEmail(email);
        orderPlaced.setName(name);
        orderPlaced.setTotalPrice(totalPrice);
        orderPlaced.setAddress(address);
        orderPlaced.setProductNames(productNames);
        orderPlaced.setMobileNumber(mobileNumber);

        orderrepo.save(orderPlaced);
        cartrepo.deleteByEmail(email);

        return "Admin_Dashboard";
    }


    //------------------------------User Contact ------------------------------------

    @RequestMapping("/ListAllContactUsData")
    public String ContactWithCustomers(Model model) {
        List<Contact_Us> ContactUSList = contactrepo.findAll();
        model.addAttribute("ContactUSList", ContactUSList);
        return "Contact_Customers";
    }

    @RequestMapping("/contact/")
    public String ComposeEmail() {
        return "Compose_email";
    }

    @RequestMapping("/contact/{id}")
    public String ComposeEmail(@PathVariable Long id, Model model) {
        Optional<Contact_Us> contactOptional = contactrepo.findById(id);
        if (contactOptional.isPresent()) {
            Contact_Us contact = contactOptional.get();
            model.addAttribute("contact", contact);
            return "Compose_email";
        } else {
            return "redirect:/error";
        }
    }

    @PostMapping("/send_email")
    public String sendEmail(@RequestParam("id") Long id,
                            @RequestParam("email") String recipientEmail,
                            @RequestParam("message") String userMessage,
                            @RequestParam("subject") String subject) {

        DairyManagementApplication dairyManagementApplication = new DairyManagementApplication();
        String from = dairyManagementApplication.getFrom();
        String message = "Dear User,\n\n" +
                "Thank you for contacting us. We have received your message:\n\n" +
                subject + "\n\n" +
                "Regards,\n" +
                "The Dairy Management Team";
        dairyManagementApplication.sentMessage(message, subject, recipientEmail, from);
        deleteContactUsById(id);
        return "Admin_Dashboard";
    }

    public void deleteContactUsById(Long id) {
        contactrepo.deleteById(id);
    }

    //------------------------------------------------------------------------------

    @RequestMapping("Product_Insert")
    public String Product_Insert_Page() {
        return "Product_Insert";
    }

    @RequestMapping("/InsertSuccess")
    public String Product_Insert(@ModelAttribute Products productInsert, HttpSession session) {
        prorepo.save(productInsert);
        return "Admin_Dashboard";
    }
}