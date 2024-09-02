package com.example.crm.controller;

import com.example.crm.service.ResumeParserService;
import com.example.crm.service.S3Service;
import org.apache.tika.exception.TikaException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Controller
public class CandidateController {

    @Autowired
    private S3Service s3Service;

    @Autowired
    private ResumeParserService resumeParserService;

    @GetMapping("/upload")
    public String showUploadForm() {
        return "upload";
    }

    @PostMapping("/candidates/upload")
    public String uploadResume(@RequestParam("file") MultipartFile file, Model model) throws IOException, TikaException {
        // Upload file to S3
        String fileName = s3Service.uploadFile(file);

        // Parse the file
        String parsedContent = resumeParserService.parseResume(file.getInputStream());
        String specificData = resumeParserService.extractSpecificData(parsedContent);

        // Pass message to the view
        model.addAttribute("message", "Resume uploaded and parsed. Extracted Data: " + specificData);

        return "upload";
    }

    @GetMapping("/download")
    public String showDownloadPage(Model model) {
        // List all files in the S3 bucket
        List<String> files = s3Service.listFiles();
        model.addAttribute("files", files);
        return "download";
    }
}
