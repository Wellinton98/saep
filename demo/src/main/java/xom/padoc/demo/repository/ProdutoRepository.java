package xom.padoc.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import xom.padoc.demo.model.Produto;


        public interface ProdutoRepository extends JpaRepository<Produto, Long>{}