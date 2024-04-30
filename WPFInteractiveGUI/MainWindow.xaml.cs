using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WPFInteractiveGUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        private Controller controller;
        public MainWindow()
        {
            InitializeComponent();

            controller = new Controller();
        }

        private void tbFirstName_TextChanged(object sender, TextChangedEventArgs e)
        {
            controller.CurrentPerson.FirstName = tbFirstName.Text;
        }

        private void tbLastName_TextChanged(object sender, TextChangedEventArgs e)
        {
            controller.CurrentPerson.LastName = tbLastName.Text;
        }

        private void tbAge_TextChanged(object sender, TextChangedEventArgs e)
        {
            if (controller.PersonCount > 0)
            controller.CurrentPerson.Age = int.Parse(tbAge.Text);
        }

        private void tbTelephoneNo_TextChanged(object sender, TextChangedEventArgs e)
        {
            controller.CurrentPerson.TelephoneNo = tbTelephoneNo.Text;
        }

        private void btnNewPerson_Click(object sender, RoutedEventArgs e)
        {
            if (controller.PersonCount == 0)
            {
                ToggleIsEnabled();
            }
            controller.AddPerson();
            UpdateCountAndIndex();
            UpdateCurrentPerson();
            UpdateButton();
        }

        private void btnDeletePerson_Click(object sender, RoutedEventArgs e)
        {
            controller.DeletePerson();
            if (controller.PersonCount == 0)
            {
                ToggleIsEnabled();
            }
            UpdateCountAndIndex();
            UpdateCurrentPerson();
            UpdateButton();
        }

        private void btnUp_Click(object sender, RoutedEventArgs e)
        {
            controller.PrevPerson();
            UpdateCurrentPerson();
            UpdateButton();
        }

        private void btnDown_Click(object sender, RoutedEventArgs e)
        {
            controller.NextPerson();
            UpdateCurrentPerson();
            UpdateButton();
        }



        private void ToggleIsEnabled()
        {
            tbFirstName.IsEnabled = !tbFirstName.IsEnabled;
            tbLastName.IsEnabled = !tbLastName.IsEnabled;
            tbAge.IsEnabled = !tbAge.IsEnabled;
            tbTelephoneNo.IsEnabled = !tbTelephoneNo.IsEnabled;
            btnDeletePerson.IsEnabled = !btnDeletePerson.IsEnabled;
        }

        private void UpdateButton()
        {
            if (controller.PersonIndex + 1 == controller.PersonCount)
                btnDown.IsEnabled = false;
            else
                btnDown.IsEnabled = true;

            if (controller.PersonIndex <= 0)
                btnUp.IsEnabled = false;
            else
                btnUp.IsEnabled = true;
        }

        private void UpdateCountAndIndex()
        {
            lblPersonCount.Content = $"Person Count {controller.PersonCount}";
            lblIndex.Content = $"Index {controller.PersonCount - 1}";
        }

        private void UpdateCurrentPerson()
        {
            lblIndex.Content = $"Index {controller.PersonIndex}";
            if (controller.PersonCount != 0)
            {
                tbFirstName.Text = controller.CurrentPerson.FirstName;
                tbLastName.Text = controller.CurrentPerson.LastName;
                tbAge.Text = controller.CurrentPerson.Age.ToString();
                tbTelephoneNo.Text = controller.CurrentPerson.TelephoneNo;
            }
            else
            {
                tbFirstName.Text = "";
                tbLastName.Text = "";
                tbAge.Text = "";
                tbTelephoneNo.Text = "";
            }
        }
    }
}
