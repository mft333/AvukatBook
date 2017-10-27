using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Npgsql;

public class fonksiyonlar
{
    

    public NpgsqlConnection tCon = new NpgsqlConnection("Server Bilgileri Buraya");
    public string tSQL;
   
    NpgsqlDataAdapter tDataReader = new NpgsqlDataAdapter();

    public object IsDBNull { get; private set; }

    public void PublicExecuteNonQuery()
    {
        NpgsqlCommand tCommand = new NpgsqlCommand(tSQL,tCon);

        if (tCon.State == System.Data.ConnectionState.Open)
        {
            tCon.Close();
        }

        tCommand.Connection = tCon;
        tCommand.CommandType = System.Data.CommandType.Text;
        tCommand.CommandTimeout = 60000;
        tCommand.CommandText = tSQL;
        tCon.Open();
        tCommand.ExecuteNonQuery();
        tCon.Close();
    }

    //String İnteger için ExecuteScalar
    public int  PublicExecuteScalarInteger()
    {
        NpgsqlCommand tCommand = new NpgsqlCommand(tSQL, tCon);
        //int tInteger;

        if (tCon.State == System.Data.ConnectionState.Open)
        {
            tCon.Close();
        }

        tCon.Open();
        tCommand.CommandType = System.Data.CommandType.Text;
        tCommand.CommandTimeout = 60000;
        tCommand.CommandText = tSQL;

     
        //if ( tCommand.ExecuteScalar() != DBNull.Value )
        //{
        // tInteger =(int)tCommand.ExecuteScalar();
          
        //}

        tCon.Close();
        return Convert.ToInt32(tCommand.ExecuteScalar());

    }

    //Double değerler için ExecuteScalar
    public double  PublicExecuteScalarDouble()
    {
        NpgsqlCommand tCommand = new NpgsqlCommand(tSQL, tCon);
        //int double;

        if (tCon.State == System.Data.ConnectionState.Open)
        {
            tCon.Close();
        }

        tCon.Open();
        tCommand.CommandType = System.Data.CommandType.Text;
        tCommand.CommandTimeout = 60000;
        tCommand.CommandText = tSQL;


        //if ( tCommand.ExecuteScalar() != DBNull.Value )
        //{
        // tInteger =(int)tCommand.ExecuteScalar();

        //}

        tCon.Close();
        return Convert.ToDouble(tCommand.ExecuteScalar());

    }

    //String değerler için ExecuteScalar
    public string  PublicExecuteScalarString()
    {
        NpgsqlCommand tCommand = new NpgsqlCommand(tSQL, tCon);
        //int string;

        if (tCon.State == System.Data.ConnectionState.Open)
        {
            tCon.Close();
        }

        tCon.Open();
        tCommand.CommandType = System.Data.CommandType.Text;
        tCommand.CommandTimeout = 60000;
        tCommand.CommandText = tSQL;


        //if ( tCommand.ExecuteScalar() != DBNull.Value )
        //{
        // tInteger =(int)tCommand.ExecuteScalar();

        //}

        tCon.Close();
        return Convert.ToString(tCommand.ExecuteScalar());

    }


    public Boolean  PublicExecuteScalarBoolean()
    {
        NpgsqlCommand tCommand = new NpgsqlCommand(tSQL, tCon);
        //int Boolean;

        if (tCon.State == System.Data.ConnectionState.Open)
        {
            tCon.Close();
        }

        tCon.Open();
        tCommand.CommandType = System.Data.CommandType.Text;
        tCommand.CommandTimeout = 60000;
        tCommand.CommandText = tSQL;


        //if ( tCommand.ExecuteScalar() != DBNull.Value )
        //{
        // tInteger =(int)tCommand.ExecuteScalar();

        //}

        tCon.Close();
        return Convert.ToBoolean(tCommand.ExecuteScalar());

    }

       

   
    public static char textFiltre(char tGelenVeri)
    {
        switch (tGelenVeri)
        {
            case ',':
                return '.';
            case ';':
                return ' ';
            case '%':
                return ' ';
            case '&':
                return ' ';
            default:
                return char.ToUpper(tGelenVeri);

        }
    }

    public static char textFiltreSayisal(char tGelenVeri)
    {

        switch (tGelenVeri)
        {
            case '1':
                return '1';
            case '2':
                return '2';
            case '3':
                return '3';
            case '4':
                return '4';
            case '5':
                return '5';
            case '6':
                return '6';
            case '7':
                return '7';
            case '8':
                return '8';
            case '9':
                return '9';
            case '0':
                return ' ';
            default:
                return ' ';

        }

    }

}
