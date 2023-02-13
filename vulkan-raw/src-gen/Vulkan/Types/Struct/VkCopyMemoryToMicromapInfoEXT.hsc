{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkCopyMemoryToMicromapInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCopyMicromapModeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Union.VkDeviceOrHostAddressConstKHR



data {-# CTYPE "vulkan/vulkan.h" "VkCopyMemoryToMicromapInfoEXT" #-} VkCopyMemoryToMicromapInfoEXT =
       VkCopyMemoryToMicromapInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , src :: VkDeviceOrHostAddressConstKHR
         , dst :: VkMicromapEXT
         , mode :: VkCopyMicromapModeEXT
         }

instance Storable VkCopyMemoryToMicromapInfoEXT where
  sizeOf    _ = #{size      VkCopyMemoryToMicromapInfoEXT}
  alignment _ = #{alignment VkCopyMemoryToMicromapInfoEXT}

  peek ptr = 
    VkCopyMemoryToMicromapInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"src" ptr)
       <*> peek (offset @"dst" ptr)
       <*> peek (offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"src" ptr val
    pokeField @"dst" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkCopyMemoryToMicromapInfoEXT where
  rawOffset = #{offset VkCopyMemoryToMicromapInfoEXT, sType}

instance Offset "pNext" VkCopyMemoryToMicromapInfoEXT where
  rawOffset = #{offset VkCopyMemoryToMicromapInfoEXT, pNext}

instance Offset "src" VkCopyMemoryToMicromapInfoEXT where
  rawOffset = #{offset VkCopyMemoryToMicromapInfoEXT, src}

instance Offset "dst" VkCopyMemoryToMicromapInfoEXT where
  rawOffset = #{offset VkCopyMemoryToMicromapInfoEXT, dst}

instance Offset "mode" VkCopyMemoryToMicromapInfoEXT where
  rawOffset = #{offset VkCopyMemoryToMicromapInfoEXT, mode}

#else

module Vulkan.Types.Struct.VkCopyMemoryToMicromapInfoEXT where

#endif