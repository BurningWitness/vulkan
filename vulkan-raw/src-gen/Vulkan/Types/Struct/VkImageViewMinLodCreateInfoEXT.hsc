{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_view_min_lod

module Vulkan.Types.Struct.VkImageViewMinLodCreateInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageViewMinLodCreateInfoEXT" #-} VkImageViewMinLodCreateInfoEXT =
       VkImageViewMinLodCreateInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , minLod :: #{type float}
         }

instance Storable VkImageViewMinLodCreateInfoEXT where
  sizeOf    _ = #{size      VkImageViewMinLodCreateInfoEXT}
  alignment _ = #{alignment VkImageViewMinLodCreateInfoEXT}

  peek ptr = 
    VkImageViewMinLodCreateInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"minLod" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"minLod" ptr val

instance Offset "sType" VkImageViewMinLodCreateInfoEXT where
  rawOffset = #{offset VkImageViewMinLodCreateInfoEXT, sType}

instance Offset "pNext" VkImageViewMinLodCreateInfoEXT where
  rawOffset = #{offset VkImageViewMinLodCreateInfoEXT, pNext}

instance Offset "minLod" VkImageViewMinLodCreateInfoEXT where
  rawOffset = #{offset VkImageViewMinLodCreateInfoEXT, minLod}

#else

module Vulkan.Types.Struct.VkImageViewMinLodCreateInfoEXT where

#endif