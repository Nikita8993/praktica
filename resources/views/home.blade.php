@extends('layouts.layout')

@section('title')
  @parent - {{ $title }}
@endsection

@section('header')
@parent

@endsection

@section('content')
<section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 class="fw-light">не Важное объявление</h1>
        <p class="lead text-muted">Здесь могла быть ваша реклама</p>
        <p>
          <a href="#" class="btn btn-primary my-2">Круто</a>
          <a href="#" class="btn btn-secondary my-2">42</a>
        </p>
      </div>
    </div>
</section>

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">

    @foreach ($posts as $post)
        <div class="col">
          <div class="card shadow-sm">
            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Эскиз</text></svg>
            <div class="card-body">
              <h5 class="card-title">{{ $post->title }}</h5>
              <p class="card-text"> {{ $post->content }} </p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">Смотреть</button>
                  @auth
                  <button type="button" class="btn btn-sm btn-outline-secondary">Редактирование</button>
                  @endauth
                </div>
                <small class="text-muted"> {{$post->getDate()}} </small>
                
              </div>
              <p  class="card-text">{{$post->userID}}</p>
            </div>
          </div>
        </div>
    @endforeach

      </div>
    </div>
  </div>
@endsection