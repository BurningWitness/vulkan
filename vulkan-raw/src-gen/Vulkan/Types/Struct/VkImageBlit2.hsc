{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_3

module Vulkan.Types.Struct.VkImageBlit2 where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkImageSubresourceLayers
import Vulkan.Types.Struct.VkOffset3D



data {-# CTYPE "vulkan/vulkan.h" "VkImageBlit2" #-} VkImageBlit2 =
       VkImageBlit2
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , srcSubresource :: VkImageSubresourceLayers
         , srcOffsets :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         , dstSubresource :: VkImageSubresourceLayers
         , dstOffsets :: VkOffset3D -- ^ Specified in pixels for both compressed and uncompressed images
         }

instance Storable VkImageBlit2 where
  sizeOf    _ = #{size      VkImageBlit2}
  alignment _ = #{alignment VkImageBlit2}

  peek ptr = 
    VkImageBlit2
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"srcOffsets" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstSubresource" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dstOffsets" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"srcSubresource" ptr val
    pokeField @"srcOffsets" ptr val
    pokeField @"dstSubresource" ptr val
    pokeField @"dstOffsets" ptr val

instance Offset "sType" VkImageBlit2 where
  rawOffset = #{offset VkImageBlit2, sType}

instance Offset "pNext" VkImageBlit2 where
  rawOffset = #{offset VkImageBlit2, pNext}

instance Offset "srcSubresource" VkImageBlit2 where
  rawOffset = #{offset VkImageBlit2, srcSubresource}

instance Offset "srcOffsets" VkImageBlit2 where
  rawOffset = #{offset VkImageBlit2, srcOffsets}

instance Offset "dstSubresource" VkImageBlit2 where
  rawOffset = #{offset VkImageBlit2, dstSubresource}

instance Offset "dstOffsets" VkImageBlit2 where
  rawOffset = #{offset VkImageBlit2, dstOffsets}

#else

module Vulkan.Types.Struct.VkImageBlit2 where

#endif