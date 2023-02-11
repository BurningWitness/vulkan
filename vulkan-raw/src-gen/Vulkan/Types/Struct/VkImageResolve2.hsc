{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkImageResolve2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkExtent3D
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageResolve2" #-} VkImageResolve2 =
       VkImageResolve2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubresource :: VkImageSubresourceLayers
         , srcOffset :: VkOffset3D
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffset :: VkOffset3D
         , extent :: VkExtent3D
         }

instance Storable VkImageResolve2 where
  sizeOf    _ = #{size      struct VkImageResolve2}
  alignment _ = #{alignment struct VkImageResolve2}

  peek ptr = 
    VkImageResolve2
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcSubresource" ptr)
       <*> peek (offset @"srcOffset" ptr)
       <*> peek (offset @"dstSubresource" ptr)
       <*> peek (offset @"dstOffset" ptr)
       <*> peek (offset @"extent" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffset" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffset" ptr val
    pokeField @"extent" ptr val

instance Offset "sType" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, sType}

instance Offset "pNext" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, pNext}

instance Offset "srcSubresource" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, srcSubresource}

instance Offset "srcOffset" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, srcOffset}

instance Offset "dstSubresource" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, dstSubresource}

instance Offset "dstOffset" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, dstOffset}

instance Offset "extent" VkImageResolve2 where
  rawOffset = #{offset struct VkImageResolve2, extent}

#else

module Vulkan.Types.Struct.VkImageResolve2 where

#endif