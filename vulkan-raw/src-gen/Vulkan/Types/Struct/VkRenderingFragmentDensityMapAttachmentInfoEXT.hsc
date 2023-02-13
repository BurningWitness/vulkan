{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_dynamic_rendering && VK_EXT_fragment_density_map

module Vulkan.Types.Struct.VkRenderingFragmentDensityMapAttachmentInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageLayout
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkRenderingFragmentDensityMapAttachmentInfoEXT" #-} VkRenderingFragmentDensityMapAttachmentInfoEXT =
       VkRenderingFragmentDensityMapAttachmentInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , imageView :: VkImageView
         , imageLayout :: VkImageLayout
         }

instance Storable VkRenderingFragmentDensityMapAttachmentInfoEXT where
  sizeOf    _ = #{size      VkRenderingFragmentDensityMapAttachmentInfoEXT}
  alignment _ = #{alignment VkRenderingFragmentDensityMapAttachmentInfoEXT}

  peek ptr = 
    VkRenderingFragmentDensityMapAttachmentInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"imageView" ptr)
       <*> peek (offset @"imageLayout" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"imageView" ptr val
    pokeField @"imageLayout" ptr val

instance Offset "sType" VkRenderingFragmentDensityMapAttachmentInfoEXT where
  rawOffset = #{offset VkRenderingFragmentDensityMapAttachmentInfoEXT, sType}

instance Offset "pNext" VkRenderingFragmentDensityMapAttachmentInfoEXT where
  rawOffset = #{offset VkRenderingFragmentDensityMapAttachmentInfoEXT, pNext}

instance Offset "imageView" VkRenderingFragmentDensityMapAttachmentInfoEXT where
  rawOffset = #{offset VkRenderingFragmentDensityMapAttachmentInfoEXT, imageView}

instance Offset "imageLayout" VkRenderingFragmentDensityMapAttachmentInfoEXT where
  rawOffset = #{offset VkRenderingFragmentDensityMapAttachmentInfoEXT, imageLayout}

#else

module Vulkan.Types.Struct.VkRenderingFragmentDensityMapAttachmentInfoEXT where

#endif