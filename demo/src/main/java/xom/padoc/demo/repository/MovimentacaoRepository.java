package xom.padoc.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import xom.padoc.demo.model.Movimentacao;

        public interface MovimentacaoRepository extends JpaRepository<Movimentacao, Long>{}