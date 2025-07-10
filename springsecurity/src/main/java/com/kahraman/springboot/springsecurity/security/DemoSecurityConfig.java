package com.kahraman.springboot.springsecurity.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
public class DemoSecurityConfig {

    @Bean
    public InMemoryUserDetailsManager userDetailsManager() {

        UserDetails hasan = User.builder().
                username("hasan").password("{noop}hasan123").roles("EMPLOYEE").build();

        UserDetails ali = User.builder().
                username("ali").password("{noop}ali123").roles("EMPLOYEE", "MANAGER").build();

        UserDetails julian = User.builder().
                username("julian").password("{noop}julian123").roles("EMPLOYEE", "MANAGER", "ADMIN").build();

        return new InMemoryUserDetailsManager(hasan, ali, julian);
    }
}
