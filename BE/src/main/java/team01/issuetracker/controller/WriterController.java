package team01.issuetracker.controller;

import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import team01.issuetracker.service.WriterService;
import team01.issuetracker.service.dto.response.WritersResponseDTO;

@Tag(name = "Writer", description = "작성자 관련 API")
@RequiredArgsConstructor
@RequestMapping("/api/writers")
@RestController
public class WriterController {

    private final WriterService writerService;
    private final Logger logger = LoggerFactory.getLogger(WriterController.class);

    @GetMapping
    public ResponseEntity<WritersResponseDTO> writersView() {
        logger.info("작성자 조회");
        return ResponseEntity.ok(writerService.getWriters());
    }
}
