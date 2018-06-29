/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prodotti;

import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author alfonso
 */
@Stateless
@Named("pstore")
public class ProdottoStore {
    
    @PersistenceContext
    private EntityManager em;
    
    
    public List<Prodotto> findAll(){
        return em.createQuery("select e from Prodotto e order by e.prezzo desc",Prodotto.class)
                .getResultList();
    }
}
