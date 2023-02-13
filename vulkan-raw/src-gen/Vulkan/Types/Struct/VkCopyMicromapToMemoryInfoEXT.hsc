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
  sizeOf    _ = #{size      VkCopyMicromapToMemoryInfoEXT}
  alignment _ = #{alignment VkCopyMicromapToMemoryInfoEXT}

  peek ptr = 
    VkCopyMicromapToMemoryInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"src" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"dst" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"mode" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"src" ptr val
    pokeField @"dst" ptr val
    pokeField @"mode" ptr val

instance Offset "sType" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset VkCopyMicromapToMemoryInfoEXT, sType}

instance Offset "pNext" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset VkCopyMicromapToMemoryInfoEXT, pNext}

instance Offset "src" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset VkCopyMicromapToMemoryInfoEXT, src}

instance Offset "dst" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset VkCopyMicromapToMemoryInfoEXT, dst}

instance Offset "mode" VkCopyMicromapToMemoryInfoEXT where
  rawOffset = #{offset VkCopyMicromapToMemoryInfoEXT, mode}

#else

module Vulkan.Types.Struct.VkCopyMicromapToMemoryInfoEXT where

#endif