/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tsguild.movies.dao;

import com.tsguild.movies.dto.Movie;
import java.util.List;

/**
 *
 * @author pspethmann
 */
public interface MoviesDao {

    Movie add(Movie m) throws MoviesDaoException;

    List<Movie> list() throws MoviesDaoException;
    
    void edit(Movie m) throws MoviesDaoException;

    Movie lookup(String title) throws MoviesDaoException;
    
    Movie lookup(int id) throws MoviesDaoException;

    boolean remove(Movie m) throws MoviesDaoException;

    List<Movie> search(String str) throws MoviesDaoException;
    
}
