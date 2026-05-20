package xom.padoc.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import xom.padoc.demo.model.Funcionario;



    public interface FuncinarioRepository extends JpaRepository<Funcionario, Long>{
        Funcionario findByLogin(String login);
    }

