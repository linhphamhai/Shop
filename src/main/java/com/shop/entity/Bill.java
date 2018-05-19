package com.shop.entity;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "bill")
public class Bill {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "customer_name")
	private String customerName;

	@Column(name = "address")
	private String address;

	@Column(name = "phone_number")
	private String phoneNumber;

	@Column(name = "order_time")
	private Date orderTime;

	@Column(name = "delivery_time")
	private Date deliveryTime;

	@Column(name = "note")
	private String note;

	@Column(name = "state")
	private int state;

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "bill")
	private Set<BillDetail> billDetails = new HashSet<BillDetail>();

	public Bill() {

	}

	public Bill(int id, String customerName, String address, String phoneNumber, Date orderTime, Date deliveryTime,
			String note, int state, Set<BillDetail> billDetails) {
		super();
		this.id = id;
		this.customerName = customerName;
		this.address = address;
		this.phoneNumber = phoneNumber;
		this.orderTime = orderTime;
		this.deliveryTime = deliveryTime;
		this.note = note;
		this.state = state;
		this.billDetails = billDetails;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public Date getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(Date deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public Set<BillDetail> getBillDetails() {
		return billDetails;
	}

	public void setBillDetails(Set<BillDetail> billDetails) {
		this.billDetails = billDetails;
	}

}
