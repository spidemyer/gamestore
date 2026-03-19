package com.spidemyer.gamestore.Repository;

import org.springframework.data.repository.CrudRepository;

import com.spidemyer.gamestore.Model.Game;

public interface GameRepository extends CrudRepository<Game, Integer>{
    
    
}
