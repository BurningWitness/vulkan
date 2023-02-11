{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_opacity_micromap

module Vulkan.Types.Struct.VkCopyMicromapInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkCopyMicromapModeEXT
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkCopyMicromapInfoEXT" #-} VkCopyMicromapInfoEXT =
       VkCopyMicromapInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , src :: VkMicromapEXT
         , dst :: VkMicromapEXT
         , mode :: VkCopyMicromapModeEXT
         }

instance Storable VkCopyMicromapInfoEXT where
  sizeOf    _ = #{size      struct VkCopyMicromapInfoEXT}
  alignment _ = #{alignment struct VkCopyMicromapInfoEXT}

  peek ptr = 
    VkCopyMicromapInfoEXT
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

instance Offset "sType" VkCopyMicromapInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapInfoEXT, sType}

instance Offset "pNext" VkCopyMicromapInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapInfoEXT, pNext}

instance Offset "src" VkCopyMicromapInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapInfoEXT, src}

instance Offset "dst" VkCopyMicromapInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapInfoEXT, dst}

instance Offset "mode" VkCopyMicromapInfoEXT where
  rawOffset = #{offset struct VkCopyMicromapInfoEXT, mode}

#else

module Vulkan.Types.Struct.VkCopyMicromapInfoEXT where

#endif