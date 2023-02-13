{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_full_screen_exclusive

module Vulkan.Types.Struct.VkSurfaceCapabilitiesFullScreenExclusiveEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceCapabilitiesFullScreenExclusiveEXT" #-} VkSurfaceCapabilitiesFullScreenExclusiveEXT =
       VkSurfaceCapabilitiesFullScreenExclusiveEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , fullScreenExclusiveSupported :: VkBool32
         }

instance Storable VkSurfaceCapabilitiesFullScreenExclusiveEXT where
  sizeOf    _ = #{size      VkSurfaceCapabilitiesFullScreenExclusiveEXT}
  alignment _ = #{alignment VkSurfaceCapabilitiesFullScreenExclusiveEXT}

  peek ptr = 
    VkSurfaceCapabilitiesFullScreenExclusiveEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"fullScreenExclusiveSupported" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"fullScreenExclusiveSupported" ptr val

instance Offset "sType" VkSurfaceCapabilitiesFullScreenExclusiveEXT where
  rawOffset = #{offset VkSurfaceCapabilitiesFullScreenExclusiveEXT, sType}

instance Offset "pNext" VkSurfaceCapabilitiesFullScreenExclusiveEXT where
  rawOffset = #{offset VkSurfaceCapabilitiesFullScreenExclusiveEXT, pNext}

instance Offset "fullScreenExclusiveSupported" VkSurfaceCapabilitiesFullScreenExclusiveEXT where
  rawOffset = #{offset VkSurfaceCapabilitiesFullScreenExclusiveEXT, fullScreenExclusiveSupported}

#else

module Vulkan.Types.Struct.VkSurfaceCapabilitiesFullScreenExclusiveEXT where

#endif