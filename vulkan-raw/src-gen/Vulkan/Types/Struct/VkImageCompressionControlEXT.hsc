{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_image_compression_control

module Vulkan.Types.Struct.VkImageCompressionControlEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkImageCompressionFixedRateFlagsEXT
import Vulkan.Types.Enum.VkImageCompressionFlagsEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImageCompressionControlEXT" #-} VkImageCompressionControlEXT =
       VkImageCompressionControlEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkImageCompressionFlagsEXT
         , compressionControlPlaneCount :: #{type uint32_t}
         , pFixedRateFlags :: Ptr VkImageCompressionFixedRateFlagsEXT
         }

instance Storable VkImageCompressionControlEXT where
  sizeOf    _ = #{size      VkImageCompressionControlEXT}
  alignment _ = #{alignment VkImageCompressionControlEXT}

  peek ptr = 
    VkImageCompressionControlEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"compressionControlPlaneCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pFixedRateFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"compressionControlPlaneCount" ptr val
    pokeField @"pFixedRateFlags" ptr val

instance Offset "sType" VkImageCompressionControlEXT where
  rawOffset = #{offset VkImageCompressionControlEXT, sType}

instance Offset "pNext" VkImageCompressionControlEXT where
  rawOffset = #{offset VkImageCompressionControlEXT, pNext}

instance Offset "flags" VkImageCompressionControlEXT where
  rawOffset = #{offset VkImageCompressionControlEXT, flags}

instance Offset "compressionControlPlaneCount" VkImageCompressionControlEXT where
  rawOffset = #{offset VkImageCompressionControlEXT, compressionControlPlaneCount}

instance Offset "pFixedRateFlags" VkImageCompressionControlEXT where
  rawOffset = #{offset VkImageCompressionControlEXT, pFixedRateFlags}

#else

module Vulkan.Types.Struct.VkImageCompressionControlEXT where

#endif