package com.example.demo.entities;
// Generated Oct 21, 2019, 3:21:12 AM by Hibernate Tools 5.1.10.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * RejectionDetails generated by hbm2java
 */
@Entity
@Table(name = "rejection_details", catalog = "projectsem_4")
public class RejectionDetails implements java.io.Serializable {

	private Integer id;
	private Account account;
	private Factory factory;
	private Invoice invoice;
	private Product product;
	private PucharseOrder pucharseOrder;
	private Rejection rejection;
	private Warehouse warehouse;
	private boolean status;

	public RejectionDetails() {
	}

	public RejectionDetails(Account account, Factory factory, Invoice invoice, Product product,
			PucharseOrder pucharseOrder, Rejection rejection, Warehouse warehouse, boolean status) {
		this.account = account;
		this.factory = factory;
		this.invoice = invoice;
		this.product = product;
		this.pucharseOrder = pucharseOrder;
		this.rejection = rejection;
		this.warehouse = warehouse;
		this.status = status;
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
	@JoinColumn(name = "factory_id", nullable = false)
	public Factory getFactory() {
		return this.factory;
	}

	public void setFactory(Factory factory) {
		this.factory = factory;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "invoice_id", nullable = false)
	public Invoice getInvoice() {
		return this.invoice;
	}

	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "product_id", nullable = false)
	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "pucharseorder_id", nullable = false)
	public PucharseOrder getPucharseOrder() {
		return this.pucharseOrder;
	}

	public void setPucharseOrder(PucharseOrder pucharseOrder) {
		this.pucharseOrder = pucharseOrder;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "rejection_id", nullable = false)
	public Rejection getRejection() {
		return this.rejection;
	}

	public void setRejection(Rejection rejection) {
		this.rejection = rejection;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "warehouse_id", nullable = false)
	public Warehouse getWarehouse() {
		return this.warehouse;
	}

	public void setWarehouse(Warehouse warehouse) {
		this.warehouse = warehouse;
	}

	@Column(name = "status", nullable = false)
	public boolean isStatus() {
		return this.status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

}
