{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_metal_objects

module Vulkan.Types.Struct.VkImportMetalTextureInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkImageAspectFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportMetalTextureInfoEXT" #-} VkImportMetalTextureInfoEXT =
       VkImportMetalTextureInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , plane :: VkImageAspectFlagBits
         , mtlTexture :: MTLTexture_id
         }

instance Storable VkImportMetalTextureInfoEXT where
  sizeOf    _ = #{size      struct VkImportMetalTextureInfoEXT}
  alignment _ = #{alignment struct VkImportMetalTextureInfoEXT}

  peek ptr = 
    VkImportMetalTextureInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"plane" ptr)
       <*> peek (offset @"mtlTexture" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"plane" ptr val
    pokeField @"mtlTexture" ptr val

instance Offset "sType" VkImportMetalTextureInfoEXT where
  rawOffset = #{offset struct VkImportMetalTextureInfoEXT, sType}

instance Offset "pNext" VkImportMetalTextureInfoEXT where
  rawOffset = #{offset struct VkImportMetalTextureInfoEXT, pNext}

instance Offset "plane" VkImportMetalTextureInfoEXT where
  rawOffset = #{offset struct VkImportMetalTextureInfoEXT, plane}

instance Offset "mtlTexture" VkImportMetalTextureInfoEXT where
  rawOffset = #{offset struct VkImportMetalTextureInfoEXT, mtlTexture}

#else

module Vulkan.Types.Struct.VkImportMetalTextureInfoEXT where

#endif