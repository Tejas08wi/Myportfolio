package com.example.portfolio;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {
	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		http
	    .csrf().disable()
	    .authorizeRequests()
	        .antMatchers("/admin/deleteService/**", "/admin/deleteContactById/**")
	            .hasRole("ADMIN")
	        .antMatchers("/admin/**")
	            .hasAnyRole("ADMIN", "MEMBER")
	        .anyRequest()
	            .permitAll()
	    .and()
	    .formLogin()
	        .loginPage("/client/mylogin")
	        .loginProcessingUrl("/doLogin")
	        .defaultSuccessUrl("/admin/home", true)
	        .usernameParameter("user")
	        .passwordParameter("pass")
	    .and()
	    .logout()
	        .logoutUrl("/logout")
	        .logoutSuccessUrl("/client/mylogin?logout")
	        .invalidateHttpSession(true)
	        .deleteCookies("JSESSIONID")
	    .and()
	    .exceptionHandling()
	        .accessDeniedPage("/client/unauthorized");

	return http.build();
	}
	@Bean
	PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}

}
