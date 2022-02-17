package org.cak.mapper;

import org.cak.domain.MemberDTO;

public interface MemberMapper {

    public void insert(MemberDTO mdto);

    public MemberDTO login(MemberDTO mdto);
    
}
