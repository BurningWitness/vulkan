{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_copy_commands2

module Vulkan.Types.Struct.VkImageBlit2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageBlit2KHR" #-} VkImageBlit2KHR =
       VkImageBlit2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubresource :: VkImageSubresourceLayers
         , srcOffsets :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffsets :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkImageBlit2KHR where
  sizeOf    _ = #{size      VkImageBlit2KHR}
  alignment _ = #{alignment VkImageBlit2KHR}

  peek ptr = 
    VkImageBlit2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"srcSubresource" ptr)
       <*> peek (offset @"srcOffsets" ptr)
       <*> peek (offset @"dstSubresource" ptr)
       <*> peek (offset @"dstOffsets" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffsets" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffsets" ptr val

instance Offset "sType" VkImageBlit2KHR where
  rawOffset = #{offset VkImageBlit2KHR, sType}

instance Offset "pNext" VkImageBlit2KHR where
  rawOffset = #{offset VkImageBlit2KHR, pNext}

instance Offset "srcSubresource" VkImageBlit2KHR where
  rawOffset = #{offset VkImageBlit2KHR, srcSubresource}

instance Offset "srcOffsets" VkImageBlit2KHR where
  rawOffset = #{offset VkImageBlit2KHR, srcOffsets}

instance Offset "dstSubresource" VkImageBlit2KHR where
  rawOffset = #{offset VkImageBlit2KHR, dstSubresource}

instance Offset "dstOffsets" VkImageBlit2KHR where
  rawOffset = #{offset VkImageBlit2KHR, dstOffsets}

#else

module Vulkan.Types.Struct.VkImageBlit2KHR where

#endif