package com.example.demo.entities;
// Generated Oct 21, 2019, 3:21:12 AM by Hibernate Tools 5.1.10.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Account generated by hbm2java
 */
@Entity
@Table(name = "account", catalog = "projectsem_4")
public class Account implements java.io.Serializable {

	private Integer id;
	private Role role;
	private String username;
	private String password;
	private String fullname;
	private String email;
	private String phone;
	private boolean status;
	private Double credit;
	private int dayTerm;
	private Set<PucharseOrder> pucharseOrders = new HashSet<PucharseOrder>(0);
	private Set<Credit> credits = new HashSet<Credit>(0);
	private Set<RejectionDetails> rejectionDetailses = new HashSet<RejectionDetails>(0);

	public Account() {
	}

	public Account(Role role, String username, String password, String fullname, String email, String phone,
			boolean status, int dayTerm) {
		this.role = role;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.status = status;
		this.dayTerm = dayTerm;
	}

	public Account(Role role, String username, String password, String fullname, String email, String phone,
			boolean status, Double credit, int dayTerm, Set<PucharseOrder> pucharseOrders, Set<Credit> credits,
			Set<RejectionDetails> rejectionDetailses) {
		this.role = role;
		this.username = username;
		this.password = password;
		this.fullname = fullname;
		this.email = email;
		this.phone = phone;
		this.status = status;
		this.credit = credit;
		this.dayTerm = dayTerm;
		this.pucharseOrders = pucharseOrders;
		this.credits = credits;
		this.rejectionDetailses = rejectionDetailses;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "role_id", nullable = false)
	public Role getRole() {
		return this.role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	@Column(name = "username", nullable = false, length = 250)
	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Column(name = "password", nullable = false, length = 250)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "fullname", nullable = false, length = 250)
	public String getFullname() {
		return this.fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	@Column(name = "email", nullable = false, length = 250)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "phone", nullable = false, length = 20)
	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@Column(name = "credit", precision = 22, scale = 0)
	public Double getCredit() {
		return this.credit;
	}

	public void setCredit(Double credit) {
		this.credit = credit;
	}

	@Column(name = "day_term", nullable = false)
	public int getDayTerm() {
		return this.dayTerm;
	}

	public void setDayTerm(int dayTerm) {
		this.dayTerm = dayTerm;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "account")
	public Set<PucharseOrder> getPucharseOrders() {
		return this.pucharseOrders;
	}

	public void setPucharseOrders(Set<PucharseOrder> pucharseOrders) {
		this.pucharseOrders = pucharseOrders;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "account")
	public Set<Credit> getCredits() {
		return this.credits;
	}

	public void setCredits(Set<Credit> credits) {
		this.credits = credits;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "account")
	public Set<RejectionDetails> getRejectionDetailses() {
		return this.rejectionDetailses;
	}

	public void setRejectionDetailses(Set<RejectionDetails> rejectionDetailses) {
		this.rejectionDetailses = rejectionDetailses;
	}

}
