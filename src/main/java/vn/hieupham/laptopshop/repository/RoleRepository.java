package vn.hieupham.laptopshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.stereotype.Repository;

import vn.hieupham.laptopshop.domain.Role;


@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {

    Role findByName(String name);
}