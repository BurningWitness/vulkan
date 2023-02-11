{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkCopyMicromapToMemoryInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCopyMicromapModeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Union.VkDeviceOrHostAddressKHR



data {-# CTYPE "vulkan/vulkan.h" "VkCopyMicromapToMemoryInfoEXT" #-} VkCopyMicromapToMemoryInfoEXT =
       VkCopyMicromapToMemoryInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , src :: VkMicromapEXT
         , dst :: VkDeviceOrHostAddressKHR
         , mode :: VkCopyMicromapModeEXT
         }

instance Storable VkCopyMicromapToMemoryInfoEXT where
  sizeOf    _ = #{size      struct VkCopyMicromapToMemoryInfoEXT}
  alignment _ = #{alignment struct VkCopyMicromapToMemoryInfoEXT}

  peek ptr = 
    VkCopyMicromapToMemoryInfoEXT
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

instance Offset "sType" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapToMemoryInfoEXT, sType}

instance Offset "pNext" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapToMemoryInfoEXT, pNext}

instance Offset "src" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapToMemoryInfoEXT, src}

instance Offset "dst" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapToMemoryInfoEXT, dst}

instance Offset "mode" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapToMemoryInfoEXT, mode}

#else

module Vulkan.Types.Struct.VkCopyMicromapToMemoryInfoEXT where

#endif