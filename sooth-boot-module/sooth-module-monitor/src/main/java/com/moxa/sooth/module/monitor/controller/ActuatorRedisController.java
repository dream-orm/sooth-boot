package com.moxa.sooth.module.monitor.controller;

import com.alibaba.fastjson.JSONArray;
import com.moxa.sooth.module.base.core.entity.Result;
import com.moxa.sooth.module.monitor.domain.RedisInfo;
import com.moxa.sooth.module.monitor.service.RedisService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.swing.filechooser.FileSystemView;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Slf4j
@RestController
@RequestMapping("/sys/actuator/redis")
public class ActuatorRedisController {

    @Autowired
    private RedisService redisService;

    /**
     * Redis详细信息
     *
     * @return
     * @throws Exception
     */
    @GetMapping("/info")
    public Result<?> getRedisInfo() throws Exception {
        List<RedisInfo> infoList = this.redisService.getRedisInfo();
        log.info(infoList.toString());
        return Result.ok(infoList);
    }

    @GetMapping("/keysSize")
    public Map<String, Object> getKeysSize() throws Exception {
        return redisService.getKeysSize();
    }

    /**
     * 获取redis key数量 for 报表
     *
     * @return
     * @throws Exception
     */
    @GetMapping("/keysSizeForReport")
    public Map<String, JSONArray> getKeysSizeReport() throws Exception {
        return redisService.getMapForReport("1");
    }

    /**
     * 获取redis 内存 for 报表
     *
     * @return
     * @throws Exception
     */
    @GetMapping("/memoryForReport")
    public Map<String, JSONArray> memoryForReport() throws Exception {
        return redisService.getMapForReport("2");
    }

    /**
     * 获取redis 全部信息 for 报表
     *
     * @return
     * @throws Exception
     */
    @GetMapping("/infoForReport")
    public Map<String, JSONArray> infoForReport() throws Exception {
        return redisService.getMapForReport("3");
    }

    @GetMapping("/memoryInfo")
    public Map<String, Object> getMemoryInfo() throws Exception {
        return redisService.getMemoryInfo();
    }


    /**
     * @return
     * @功能：获取磁盘信息
     */
    @GetMapping("/queryDiskInfo")
    public Result<List<Map<String, Object>>> queryDiskInfo() {
        // 当前文件系统类
        FileSystemView fsv = FileSystemView.getFileSystemView();
        // 列出所有windows 磁盘
        File[] fs = File.listRoots();
        log.info("查询磁盘信息:" + fs.length + "个");
        List<Map<String, Object>> list = new ArrayList<>();

        for (int i = 0; i < fs.length; i++) {
            if (fs[i].getTotalSpace() == 0) {
                continue;
            }
            Map<String, Object> map = new HashMap(5);
            map.put("name", fsv.getSystemDisplayName(fs[i]));
            map.put("max", fs[i].getTotalSpace());
            map.put("rest", fs[i].getFreeSpace());
            map.put("restPPT", (fs[i].getTotalSpace() - fs[i].getFreeSpace()) * 100 / fs[i].getTotalSpace());
            list.add(map);
            log.info(map.toString());
        }
        return Result.ok(list);
    }
}
