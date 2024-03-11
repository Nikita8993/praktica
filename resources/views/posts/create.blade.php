@extends('layouts.layout')
@section('title')

@endsection
@section('content')
<div class="container">
    <h2 class="mt-5">Создание поста</h2>
    <form class="mt-5" action="{{ route('user.store') }}" method="POST">
        @csrf
        <div class="mb-3 mt-5">
            @error('name')
            <div class="alert alert-danger">{{ $message }}</div>
            @enderror
            <label for="name" class="form-label">Имя</label>
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="name" placeholder="имя" value="{{old('name')}}">
        </div>

        <div class="mb-3 mt-5">
            @error('email')
            <div class="alert alert-danger">{{ $message }}</div>
            @enderror
            <label for="email" class="form-label">Текст</label>
            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="текст" value="{{old('email')}}">
        </div>

        <div class="mb-3 mt-5">
            <button type="submit" class="btn btn-primary my-2">Приложить файл</button>
        </div>
        

        <button type="submit" class="btn btn-danger">Создать пост</button>
    </form>
</div>

@endsection