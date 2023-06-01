import React, { useState, useEffect } from 'react';
import { useParams } from 'react-router-dom';
import PageLayout from '@components/common/layout/PageLayout';
import DetailHeader from '@components/issueDetail/detailHeader';
import DetailContent from '@components/issueDetail/detailContent';
import apiUrl from '@utils/api/api';

const IssueDetail = () => {
  const [detailContent, setDetailContent] = useState(null);
  const { id } = useParams();

  const fetchDetailContent = async () => {
    const response = await fetch(`${apiUrl}/issues/${id}`);
    const detailData = await response.json();
    setDetailContent(detailData);
  };

  useEffect(() => {
    fetchDetailContent();
  }, []);
  return (
    <PageLayout>
      {detailContent && (
        <React.Fragment>
          <DetailHeader
            id={detailContent.id}
            issueTitle={detailContent.title}
            dateTime={detailContent.createDateTime}
            assignee={detailContent.assignees[0].name}
            state={detailContent.status}
          />
          <DetailContent
            description={detailContent.description}
            imgUrl={detailContent.writer.imgUrl}
            name={detailContent.writer.name}
          />
        </React.Fragment>
      )}
    </PageLayout>
  );
};

export default IssueDetail;
