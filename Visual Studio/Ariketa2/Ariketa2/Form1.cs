namespace Ariketa2
{
    public partial class zenbakia : Form
    {
        int x = 1;
        public zenbakia()
        {
            InitializeComponent();
            label1.Text = x + ".Zenbakia";
        }

        private void hurrengoa_Click(object sender, EventArgs e)
        {
            string zenbakia = textBox1.Text;
            x++;
            textBox1.ResetText();
            label1.Text = x + ".Zenbakia";
            if (x == 5)
            {
                label1.Text = "Emaitza";
            } else { 
            
            }      
        }

        private void garbitu_Click(object sender, EventArgs e)
        {
            Application.Restart();
        }

        private void irten_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}