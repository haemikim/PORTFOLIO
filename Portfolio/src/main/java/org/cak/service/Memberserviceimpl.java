package org.cak.service;

import org.cak.domain.MemberDTO;
import org.cak.mapper.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Memberserviceimpl implements Memberservice{

	@Autowired
    private MemberMapper mmapper;
	
    public void insert(MemberDTO mdto) {
        mmapper.insert(mdto);
    }

    public MemberDTO login(MemberDTO mdto) {
        return mmapper.login(mdto);
    }
    
}
