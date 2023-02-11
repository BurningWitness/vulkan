{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_fragment_density_map

module Vulkan.Types.Struct.VkRenderPassFragmentDensityMapCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkAttachmentReference



data {-# CTYPE "vulkan/vulkan.h" "VkRenderPassFragmentDensityMapCreateInfoEXT" #-} VkRenderPassFragmentDensityMapCreateInfoEXT =
       VkRenderPassFragmentDensityMapCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fragmentDensityMapAttachment :: VkAttachmentReference
         }

instance Storable VkRenderPassFragmentDensityMapCreateInfoEXT where
  sizeOf    _ = #{size      struct VkRenderPassFragmentDensityMapCreateInfoEXT}
  alignment _ = #{alignment struct VkRenderPassFragmentDensityMapCreateInfoEXT}

  peek ptr = 
    VkRenderPassFragmentDensityMapCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"fragmentDensityMapAttachment" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fragmentDensityMapAttachment" ptr val

instance Offset "sType" VkRenderPassFragmentDensityMapCreateInfoEXT where
  rawOffset = #{offset struct VkRenderPassFragmentDensityMapCreateInfoEXT, sType}

instance Offset "pNext" VkRenderPassFragmentDensityMapCreateInfoEXT where
  rawOffset = #{offset struct VkRenderPassFragmentDensityMapCreateInfoEXT, pNext}

instance Offset "fragmentDensityMapAttachment" VkRenderPassFragmentDensityMapCreateInfoEXT where
  rawOffset = #{offset struct VkRenderPassFragmentDensityMapCreateInfoEXT, fragmentDensityMapAttachment}

#else

module Vulkan.Types.Struct.VkRenderPassFragmentDensityMapCreateInfoEXT where

#endif