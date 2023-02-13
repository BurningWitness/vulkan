{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_GGP_stream_descriptor_surface

module Vulkan.Types.Struct.VkStreamDescriptorSurfaceCreateInfoGGP where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Protected
import Vulkan.Types.Enum.VkStreamDescriptorSurfaceCreateFlagsGGP
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkStreamDescriptorSurfaceCreateInfoGGP" #-} VkStreamDescriptorSurfaceCreateInfoGGP =
       VkStreamDescriptorSurfaceCreateInfoGGP
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkStreamDescriptorSurfaceCreateFlagsGGP
         , streamDescriptor :: GgpStreamDescriptor
         }

instance Storable VkStreamDescriptorSurfaceCreateInfoGGP where
  sizeOf    _ = #{size      VkStreamDescriptorSurfaceCreateInfoGGP}
  alignment _ = #{alignment VkStreamDescriptorSurfaceCreateInfoGGP}

  peek ptr = 
    VkStreamDescriptorSurfaceCreateInfoGGP
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"streamDescriptor" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"streamDescriptor" ptr val

instance Offset "sType" VkStreamDescriptorSurfaceCreateInfoGGP where
  rawOffset = #{offset VkStreamDescriptorSurfaceCreateInfoGGP, sType}

instance Offset "pNext" VkStreamDescriptorSurfaceCreateInfoGGP where
  rawOffset = #{offset VkStreamDescriptorSurfaceCreateInfoGGP, pNext}

instance Offset "flags" VkStreamDescriptorSurfaceCreateInfoGGP where
  rawOffset = #{offset VkStreamDescriptorSurfaceCreateInfoGGP, flags}

instance Offset "streamDescriptor" VkStreamDescriptorSurfaceCreateInfoGGP where
  rawOffset = #{offset VkStreamDescriptorSurfaceCreateInfoGGP, streamDescriptor}

#else

module Vulkan.Types.Struct.VkStreamDescriptorSurfaceCreateInfoGGP where

#endif