{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_texture_compression_astc_hdr

module Vulkan.Types.Struct.VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT" #-} VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT =
       VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , textureCompressionASTC_HDR :: VkBool32
         }

instance Storable VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT where
  sizeOf    _ = #{size      VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT}
  alignment _ = #{alignment VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT}

  peek ptr = 
    VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"textureCompressionASTC_HDR" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"textureCompressionASTC_HDR" ptr val

instance Offset "sType" VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT, sType}

instance Offset "pNext" VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT, pNext}

instance Offset "textureCompressionASTC_HDR" VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT where
  rawOffset = #{offset VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT, textureCompressionASTC_HDR}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceTextureCompressionASTCHDRFeaturesEXT where

#endif