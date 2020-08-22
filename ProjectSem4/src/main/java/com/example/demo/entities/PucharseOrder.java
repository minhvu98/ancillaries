package com.example.demo.entities;
// Generated Oct 21, 2019, 3:21:12 AM by Hibernate Tools 5.1.10.Final

import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * PucharseOrder generated by hbm2java
 */
@Entity
@Table(name = "pucharse_order", catalog = "projectsem_4")
public class PucharseOrder implements java.io.Serializable {

	private Integer id;
	private Account account;
	private Product product;
	private Date created;
	private int quantity;
	private boolean status;
	private Set<Rejection> rejections = new HashSet<Rejection>(0);
	private Set<RejectionDetails> rejectionDetailses = new HashSet<RejectionDetails>(0);
	private Set<Invoice> invoices = new HashSet<Invoice>(0);

	public PucharseOrder() {
	}

	public PucharseOrder(Account account, Product product, Date created, int quantity, boolean status) {
		this.account = account;
		this.product = product;
		this.created = created;
		this.quantity = quantity;
		this.status = status;
	}

	public PucharseOrder(Account account, Product product, Date created, int quantity, boolean status,
			Set<Rejection> rejections, Set<RejectionDetails> rejectionDetailses, Set<Invoice> invoices) {
		this.account = account;
		this.product = product;
		this.created = created;
		this.quantity = quantity;
		this.status = status;
		this.rejections = rejections;
		this.rejectionDetailses = rejectionDetailses;
		this.invoices = invoices;
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
	@JoinColumn(name = "account_id", nullable = false)
	public Account getAccount() {
		return this.account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", nullable = false)
	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "created", nullable = false, length = 10)
	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	@Column(name = "quantity", nullable = false)
	public int getQuantity() {
		return this.quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pucharseOrder")
	public Set<Rejection> getRejections() {
		return this.rejections;
	}

	public void setRejections(Set<Rejection> rejections) {
		this.rejections = rejections;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pucharseOrder")
	public Set<RejectionDetails> getRejectionDetailses() {
		return this.rejectionDetailses;
	}

	public void setRejectionDetailses(Set<RejectionDetails> rejectionDetailses) {
		this.rejectionDetailses = rejectionDetailses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pucharseOrder")
	public Set<Invoice> getInvoices() {
		return this.invoices;
	}

	public void setInvoices(Set<Invoice> invoices) {
		this.invoices = invoices;
	}

}
