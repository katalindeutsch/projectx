# JPA Entity Relations

## Unidirectional `@ManyToOne Relation`

In this case one entity (column or set of columns) is/are referenced with another entity (column or set of columns) which contain unique values. In
 relational databases these relations are applicable by using `foreign key/primary key` between tables.

 Let's see an example of relation between Company and Product entities, where `Many-To-One relation` is applicable. This means, that each record of `Product
 ` contains one `company_id`, which is the `primary key` in `Comapny` table.

 ![alt](https://grokonez.com/wp-content/uploads/2017/04/Spring-Jpa-One-To-Many-Relationship.png)

 > How does it look like in code?

```java
package com.tutorialspoint.eclipselink.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Company {

   @Id
   @GeneratedValue( strategy=GenerationType.AUTO )

   private int id;
   private String name;

   public int getId() {
      return id;
   }

   public void setId(int id) {
      this.id = id;
   }

   public String getName( ){
      return name;
   }

   public void setName( String deptName ){
      this.name = deptName;
   }
}
```

Then let's continue with the `Product` class:

```java
package com.tutorialspoint.eclipselink.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Product {

   @Id
   @GeneratedValue( strategy= GenerationType.AUTO )

   private int pid;
   private String pname;

   @ManyToOne
   private Company company;

   public Product(int pid, String pname) {
      super( );
      this.pid = pid;
      this.pname = pname;
   }

   public Product( ) {
      super();
   }

   public int getPid( ) {
      return pid;
   }

   public void setPid(int pid)  {
      this.pid = pid;
   }

   public String getPname( ) {
      return pname;
   }

   public void setPname(String pname) {
      this.pname = pname;
   }

   public Company getCompany() {
      return company;
   }

   public void setCompany(Company company) {
      this.company = company;
   }
}
```

## Bidirectional `@ManyToOne Relation`

As we saw, we only marked this relationship in the `Product` class, because it was an unidirectional relationship. When we want to declare the same
 relationship, but with providing navigational access in both directions, then we use the bidirectional `@ManyToOne` tag. Using this will give you access the
  other side without explicit queries.

The code difference will be, that we will add this snippet to the `Company` fields, so we will have acces to the `Product` class:

```java
@OneToMany(mappedBy="group")
private List<Company>  companies;
```


## `@OneToMany Relation`

If we reverse the `ManyToOne` relationship, then we can say that each row of one entity is referenced to many child records in other entity.

Let's reverse the example as well, and create our `Company` class with a new field, which will contain a list of products:

```java
package com.tutorialspoint.eclipselink.entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Company {

    @Id
    @GeneratedValue( strategy=GenerationType.AUTO )

    private int id;
    private String name;

    @OneToMany( targetEntity=Product.class )
    private List productList;

    public int getId() {
    	return id;
    }

    public void setId(int id) {
    	this.id = id;
    }

    public String getName( ) {
    	return name;
    }

    public void setName( String name ) {
    	this.name = name;
    }

    public List getProductlist() {
      return productList;
    }

   public void setProductList(List productList) {
      this.productList = productList;
   }
}
```

Now let's implement the `Product` class:

```java
package com.tutorialspoint.eclipselink.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {

   @Id
   @GeneratedValue( strategy= GenerationType.AUTO )

   private int pid;
   private String pname;

   public Product(int pid, String pname) {
      super( );
      this.pid = pid;
      this.pname = pname;
   }

   public Product( ) {
      super();
   }

   public int getPid( ) {
      return pid;
   }

   public void setPid(int pid) {
      this.pid = pid;
   }

   public String getPname( ) {
      return pname;
   }

   public void setPname(String pname) {
      this.pname = pname;
   }
}
```

## Resources

https://thorben-janssen.com/ultimate-guide-association-mappings-jpa-hibernate/#Unidirectional_Many-to-One_Association
