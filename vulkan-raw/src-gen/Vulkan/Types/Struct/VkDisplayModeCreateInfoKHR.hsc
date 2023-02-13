{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplayModeCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDisplayModeCreateFlagsKHR
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayModeParametersKHR



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayModeCreateInfoKHR" #-} VkDisplayModeCreateInfoKHR =
       VkDisplayModeCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkDisplayModeCreateFlagsKHR
         , parameters :: VkDisplayModeParametersKHR -- ^ The parameters this mode uses.
         }

instance Storable VkDisplayModeCreateInfoKHR where
  sizeOf    _ = #{size      VkDisplayModeCreateInfoKHR}
  alignment _ = #{alignment VkDisplayModeCreateInfoKHR}

  peek ptr = 
    VkDisplayModeCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"parameters" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"parameters" ptr val

instance Offset "sType" VkDisplayModeCreateInfoKHR where
  rawOffset = #{offset VkDisplayModeCreateInfoKHR, sType}

instance Offset "pNext" VkDisplayModeCreateInfoKHR where
  rawOffset = #{offset VkDisplayModeCreateInfoKHR, pNext}

instance Offset "flags" VkDisplayModeCreateInfoKHR where
  rawOffset = #{offset VkDisplayModeCreateInfoKHR, flags}

instance Offset "parameters" VkDisplayModeCreateInfoKHR where
  rawOffset = #{offset VkDisplayModeCreateInfoKHR, parameters}

#else

module Vulkan.Types.Struct.VkDisplayModeCreateInfoKHR where

#endif