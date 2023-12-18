//
//  RMCharacterCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Dhandeep  Singh on 18/12/23.
//

import Foundation

final class RMCharacterCollectionViewCellViewModel {
    public let characterName: String
    private let characterStatus: RMCharacterStatus
    private let characterimageUrl: URL?
    
    //MARK: - Init
    
    init (
        characterName: String,
        characterStatus: RMCharacterStatus,
        characterimageUrl: URL?
    ){
        self.characterName = characterName
        self.characterStatus = characterStatus
        self.characterimageUrl = characterimageUrl
    }
    
    public var characterStatusText: String {
        return "Status: \(characterStatus.text)"
    }
    
    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        // TODO: Abstract to image manager
        guard let url = characterimageUrl else {
            completion(.failure(URLError(.badURL)))
            return }
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? URLError(.badServerResponse)))
                return
            }
            completion(.success(data))
        }
        task.resume()
    }
}
