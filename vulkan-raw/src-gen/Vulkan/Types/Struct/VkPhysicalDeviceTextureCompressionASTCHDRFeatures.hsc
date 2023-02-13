{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkPhysicalDeviceTextureCompressionASTCHDRFeatures where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTextureCompressionASTCHDRFeatures" #-} VkPhysicalDeviceTextureCompressionASTCHDRFeatures =
       VkPhysicalDeviceTextureCompressionASTCHDRFeatures
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , textureCompressionASTC_HDR :: VkBool32
         }

instance Storable VkPhysicalDeviceTextureCompressionASTCHDRFeatures where
  sizeOf    _ = #{size      VkPhysicalDeviceTextureCompressionASTCHDRFeatures}
  alignment _ = #{alignment VkPhysicalDeviceTextureCompressionASTCHDRFeatures}

  peek ptr = 
    VkPhysicalDeviceTextureCompressionASTCHDRFeatures
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"textureCompressionASTC_HDR" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"textureCompressionASTC_HDR" ptr val

instance Offset "sType" VkPhysicalDeviceTextureCompressionASTCHDRFeatures where
  rawOffset = #{offset VkPhysicalDeviceTextureCompressionASTCHDRFeatures, sType}

instance Offset "pNext" VkPhysicalDeviceTextureCompressionASTCHDRFeatures where
  rawOffset = #{offset VkPhysicalDeviceTextureCompressionASTCHDRFeatures, pNext}

instance Offset "textureCompressionASTC_HDR" VkPhysicalDeviceTextureCompressionASTCHDRFeatures where
  rawOffset = #{offset VkPhysicalDeviceTextureCompressionASTCHDRFeatures, textureCompressionASTC_HDR}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTextureCompressionASTCHDRFeatures where

#endif