package pl.niewiel.springdemo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.niewiel.springdemo.DAO.CustomerDAO;
import pl.niewiel.springdemo.entity.Customer;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    private final CustomerDAO customerDAO;

    @Autowired
    public CustomerServiceImpl(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }


    @Transactional
    @Override
    public void saveCustomer(Customer customer) {
        customerDAO.saveCustomer(customer);
    }

    @Transactional
    @Override
    public Customer getCustomer(int id) {

        return customerDAO.getCustomer(id);
    }

    @Transactional
    @Override
    public void deleteCustomer(int id) {
        customerDAO.deleteCustomer(id);
    }

    @Transactional
    @Override
    public List<Customer> getCustomers() {
        return customerDAO.getCustomers();
    }
}
