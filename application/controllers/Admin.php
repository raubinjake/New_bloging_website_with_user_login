<?php

class Admin extends MY_controller
{

  /* public function __construct()
  {
    parent::__construct();
    if( ! $this->session->userdata('id') )
    return redirect('Admin/index');
    
  }*/
  
 public function index()
 {
     $this->load->model('loginmodel','ar');
  $this->load->library('pagination');

  $config=[
        'base_url' => base_url('admin/index'),
        'per_page' =>3,
        'total_rows' => $this->ar->num_rows(),
        'full_tag_open'=>"<ul class='pagination'>",
        'full_tag_close'=>"</ul>",
        'next_tag_open' =>"<li>",
        'next_tag_close' =>"</li>",
        'prev_tag_open' =>"<li>",
        'prev_tag_close' =>"</li>",
        'num_tag_open' =>"<li>",
        'num_tag_close' =>"<li>",
        'cur_tag_open' =>"<li class='active'><a>",
        'cur_tag_close' =>"</a></li>"

 ];


  $this->pagination->initialize($config);

 
  $articles=$this->ar->articleList($config['per_page']);
  $data['articles']=$articles;
  //print_r($articles);
  //ssdie;
  $this->load->view('users/articleList',$data);
  
 }

 public function adminLogin()
 {
   if( ! $this->session->userdata('id') )
    return redirect('Admin/index');
    else{   
    $this->load->model('loginmodel','ar');
  $this->load->library('pagination');

  $config=[
        'base_url' => base_url('admin/index'),
        'per_page' =>3,
        'total_rows' => $this->ar->num_rows(),
        'full_tag_open'=>"<ul class='pagination'>",
        'full_tag_close'=>"</ul>",
        'next_tag_open' =>"<li>",
        'next_tag_close' =>"</li>",
        'prev_tag_open' =>"<li>",
        'prev_tag_close' =>"</li>",
        'num_tag_open' =>"<li>",
        'num_tag_close' =>"<li>",
        'cur_tag_open' =>"<li class='active'><a>",
        'cur_tag_close' =>"</a></li>"

 ];


  $this->pagination->initialize($config);

 
  $articles=$this->ar->adminArticle($config['per_page']);
  $data['articles']=$articles;
  //print_r($articles);
  //die;
  $this->load->view('Admin/dashboard',$data);
 
 }
}

 public function adduser()
 {
    
   $this->load->view('admin/add_article');
  
 }
 public function userValidation()
 {

  if($this->form_validation->run('add_article_rules'))
  {
      $post=$this->input->post();
      
      $this->load->model('loginmodel','useradd');
      if($this->useradd->add_articles($post))
      {
         $this->session->set_flashdata('msg','Articles added successfully');
          $this->session->set_flashdata('msg_class','alert-success');
      }
      else
      {
         $this->session->set_flashdata('msg','Articles not added Please try again!!');
         $this->session->set_flashdata('msg_class','alert-danger');
      }
      return redirect('admin/adminLogin');
}
  else
  {
   $this->load->view('admin/add_article');
  }

 }
 
 public function edituser($id)
 {
 $this->load->model('loginmodel');
 $article=$this->loginmodel->find_article($id);
 /*echo"<pre>"
 print_r($article);
 die;*/
 $this->load->view('Admin/edit_article',['article'=>$article]);

 }
 public function updatearticle($article_id)
 {
if($this->form_validation->run('add_article_rules'))
  {
      $post=$this->input->post(); 
      //$articleid=$post['article_id'];
      //unset($articleid);
      $this->load->model('loginmodel','editupdate');
      if($this->editupdate->update_article($article_id,$post))
      {
         $this->session->set_flashdata('msg','Article Update successfully');
          $this->session->set_flashdata('msg_class','alert-success');
      }
      else
      {
         $this->session->set_flashdata('msg','Articles not update Please try again!!');
         $this->session->set_flashdata('msg_class','alert-danger');
      }
      return redirect('admin/adminLogin');
     }
  else
  {
    $this->edituser($article_id);
  }

 }
 public function delarticles()
 {
   $id=$this->input->post('id');
  
    $this->load->model('loginmodel','delarticle');
      if($this->delarticle->del($id))
      {
          $this->session->set_flashdata('msg','Delete Successfully');
          $this->session->set_flashdata('msg_class','alert-success');
      }
      else
      {
         $this->session->set_flashdata('msg','Please try again..not delete');
         $this->session->set_flashdata('msg_class','alert-danger');
      }
      return redirect('admin/adminLogin');

 }

  public function logout()
  {
    $this->session->unset_userdata('id');
    return redirect('Admin');
  }
 

	
}


?>