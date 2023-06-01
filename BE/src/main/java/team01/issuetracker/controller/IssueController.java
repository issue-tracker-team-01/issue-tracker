package team01.issuetracker.controller;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import team01.issuetracker.service.IssueService;
import team01.issuetracker.service.dto.request.FilterRequestDTO;
import team01.issuetracker.service.dto.request.IssueRequestDTO;

@Tag(name = "Issue", description = "이슈 관련 API")
@RequiredArgsConstructor
@RequestMapping("/api/issues")
@RestController
public class IssueController {

    private final IssueService issueService;
    private final Logger logger = LoggerFactory.getLogger(IssueController.class);

    @Operation(summary = "이슈 목록 조회")
    @GetMapping
    public ResponseEntity<?> view(FilterRequestDTO requestDTO) {
        logger.info("이슈 필터 호출");
        return ResponseEntity.ok(issueService.getIssues(requestDTO));
    }

    @Operation(summary = "새로운 이슈 작성")
    @PostMapping
    public void create(@RequestBody IssueRequestDTO issueDTO) {
        logger.debug("이슈 생성");
        issueService.create(issueDTO);
    }

    @Operation(summary = "이슈 상세 보기")
    @GetMapping("/{id}")
    public ResponseEntity<?> detailView(@PathVariable Long id) {
        logger.debug("이슈 상세보기");
        return ResponseEntity.ok(issueService.getIssue(id));
    }
}
