import {
  CommentBody,
  CommentBox,
  CommentHeaderBox,
  TimeStampBox,
  UserImageBox,
  DetailContentBox,
} from './style';
import Label from '@components/common/label';
import TextArea from '@components/common/textArea';
import Sidebar from '@components/issueForm/issueFormMainContent/mainContentSidebar/Sidebar';

const CommentHeader = ({ userImage, assignee, timeStamp }) => {
  return (
    <CommentHeaderBox>
      <UserImageBox userImage={userImage} />
      <span>{assignee}</span>
      <TimeStampBox>{timeStamp}</TimeStampBox>
      <Label title="작성자" bgColor="none" borderColor="gray" />
    </CommentHeaderBox>
  );
};

const DetailContent = ({ description, dateTime, name, imgUrl }) => {
  return (
    <DetailContentBox>
      <div>
        <CommentBox>
          <CommentHeader userImage={imgUrl} assignee={name} timeStamp={dateTime} />
          <CommentBody>{description}</CommentBody>
        </CommentBox>
        <TextArea />
      </div>
      <Sidebar />
    </DetailContentBox>
  );
};

export default DetailContent;
