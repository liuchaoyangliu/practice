package com.zzti.practice.mapper;

import com.zzti.practice.entity.Institutions;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.zzti.practice.entity.User;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author lcy
 * @since 2019-07-29
 */
@Component
public interface InstitutionsMapper extends BaseMapper<Institutions> {

}
