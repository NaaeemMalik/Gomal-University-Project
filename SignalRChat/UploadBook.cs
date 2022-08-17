using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace SignalRChat
{
    public class UploadBook
    {
        Helper helper = new Helper();
        string BookURL, BookStatus, BookSize, BookType, ImageURL;
        int BookID;

        public int get_BookID
        {
            get { return BookID; }
            set { BookID = value; }
        }
        public string get_ImageURL
        {
            get { return ImageURL; }
            set { ImageURL = value; }
        }
        public string get_BookURL
        {
            get { return BookURL; }
            set { BookURL = value; }
        }
        public string get_BookStatus
        {
            get { return BookStatus; }
            set { BookStatus = value; }
        }
        public string get_BookSize
        {
            get { return BookSize; }
            set { BookSize = value; }
        }
        public string get_BookType
        {
            get { return BookType; }
            set { BookType = value; }
        }


        public void insert()
        {
            SqlParameter[] prm = new SqlParameter[5];
            prm[0] = new SqlParameter("@BookURL", BookURL);
            prm[1] = new SqlParameter("@BookStatus", BookStatus);
            prm[2] = new SqlParameter("@BookSize", BookSize);
            prm[3] = new SqlParameter("@BookType", BookType);
            prm[4] = new SqlParameter("@ImageURL", ImageURL);
            helper.Insert("SP_Book_Insert", prm);
        }
        public void update()
        {
            SqlParameter[] prm = new SqlParameter[6];
            prm[0] = new SqlParameter("@BookURL", BookURL);
            prm[1] = new SqlParameter("@BookStatus", BookStatus);
            prm[2] = new SqlParameter("@BookSize", BookSize);
            prm[3] = new SqlParameter("@BookType", BookType);
            prm[4] = new SqlParameter("@ImageURL", ImageURL);
            prm[5] = new SqlParameter("@BookID", BookID);
            helper.Update("SP_Book_Update", prm);
        }
        public void delete()
        {
            SqlParameter[] prm = new SqlParameter[1];
            prm[0] = new SqlParameter("@BookID", BookID);
            helper.Delete("SP_Book_Delete", prm);
        }
    }
}