package vn.hieupham.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import vn.hieupham.laptopshop.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User hieupham);
    List<User> findByEmail(String email);
    List<User> findAll();

    User findById(long id); // may be return Null or User..
 
}
