{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkExportMetalTextureInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkExportMetalTextureInfoEXT" #-} VkExportMetalTextureInfoEXT =
       VkExportMetalTextureInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , image :: VkImage
         , imageView :: VkImageView
         , bufferView :: VkBufferView
         , plane :: VkImageAspectFlagBits
         , mtlTexture :: MTLTexture_id
         }

instance Storable VkExportMetalTextureInfoEXT where
  sizeOf    _ = #{size      VkExportMetalTextureInfoEXT}
  alignment _ = #{alignment VkExportMetalTextureInfoEXT}

  peek ptr = 
    VkExportMetalTextureInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"image" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"bufferView" ptr)
       <*> peek (offset @"plane" ptr)
       <*> peek (offset @"mtlTexture" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"image" ptr val
    pokeField @"imageView" ptr val
    pokeField @"bufferView" ptr val
    pokeField @"plane" ptr val
    pokeField @"mtlTexture" ptr val

instance Offset "sType" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, sType}

instance Offset "pNext" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, pNext}

instance Offset "image" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, image}

instance Offset "imageView" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, imageView}

instance Offset "bufferView" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, bufferView}

instance Offset "plane" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, plane}

instance Offset "mtlTexture" VkExportMetalTextureInfoEXT where
  rawOffset = #{offset VkExportMetalTextureInfoEXT, mtlTexture}

#else

module Vulkan.Types.Struct.VkExportMetalTextureInfoEXT where

#endif