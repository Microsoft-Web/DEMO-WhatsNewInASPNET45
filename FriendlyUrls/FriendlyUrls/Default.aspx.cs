using WebFormsMusicStore.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FriendlyUrls
{
    public partial class _Default : Page
    {
        private MusicStoreEntities _db = new MusicStoreEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // The return type can be changed to IEnumerable, however to support
        // paging and sorting, the following parameters must be added:
        //     int maximumRows
        //     int startRowIndex
        //     out int totalRowCount
        //     string sortByExpression
        public IQueryable<WebFormsMusicStore.Models.Album> AlbumList_GetData()
        {
            return _db.Albums.Take(10);
        }
    }
}