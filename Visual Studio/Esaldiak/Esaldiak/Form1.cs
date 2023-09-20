namespace Esaldiak
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void esaldi1_Click(object sender, EventArgs e)
        {
            esaldi1.Enabled = true;
            String esaldia1 = textBox1.Text;
            esaldi1.Enabled = false;
            esaldi2_Click(sender, e);
        }

        private void esaldi2_Click(object sender, EventArgs e)
        {
            esaldi2.Enabled = true;
            String esaldia2 = textBox1.Text;
            esaldi2.Enabled = false;
            esaldi3_Click(sender, e);
        }

        private void esaldi3_Click(object sender, EventArgs e)
        {
            esaldi3.Enabled = false;
            String esaldia3 = textBox1.Text;
        }

        private void button4_Click(object sender, EventArgs e)
        {
            button4.Enabled = false;
            String esaldia4 = textBox1.Text;
        }

        private void esaldi5_Click(object sender, EventArgs e)
        {
            esaldi5.Enabled = false;
            String esaldia5 = textBox1.Text;
        }

        private void lotu_Click(object sender, EventArgs e)
        {
            lotu.Enabled = false;
           // MessageBox.Show(esaldi1 + esaldi2 + esaldi3 + esaldi4 + esaldi5);
        }
    }
}