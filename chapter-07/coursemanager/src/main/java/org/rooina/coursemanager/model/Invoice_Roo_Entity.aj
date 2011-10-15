// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooina.coursemanager.model;

import java.lang.Long;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.rooina.coursemanager.model.Invoice;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Invoice_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager Invoice.entityManager;
    
    @Transactional
    public void Invoice.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Invoice.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Invoice attached = Invoice.findInvoice(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Invoice.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Invoice.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Invoice Invoice.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Invoice merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Invoice.entityManager() {
        EntityManager em = new Invoice().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Invoice.countInvoices() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Invoice o", Long.class).getSingleResult();
    }
    
    public static List<Invoice> Invoice.findAllInvoices() {
        return entityManager().createQuery("SELECT o FROM Invoice o", Invoice.class).getResultList();
    }
    
    public static Invoice Invoice.findInvoice(Long id) {
        if (id == null) return null;
        return entityManager().find(Invoice.class, id);
    }
    
    public static List<Invoice> Invoice.findInvoiceEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Invoice o", Invoice.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
