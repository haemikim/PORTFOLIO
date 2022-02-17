package org.cak.service;

import org.cak.domain.MemberDTO;

public interface Memberservice {

    public void insert(MemberDTO mdto);

	public MemberDTO login(MemberDTO mdto);
    
}
