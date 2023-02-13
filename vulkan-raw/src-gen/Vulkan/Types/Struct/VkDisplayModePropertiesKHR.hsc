{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplayModePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkDisplayModeParametersKHR



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayModePropertiesKHR" #-} VkDisplayModePropertiesKHR =
       VkDisplayModePropertiesKHR
         { displayMode :: VkDisplayModeKHR -- ^ Handle of this display mode.
         , parameters :: VkDisplayModeParametersKHR -- ^ The parameters this mode uses.
         }

instance Storable VkDisplayModePropertiesKHR where
  sizeOf    _ = #{size      VkDisplayModePropertiesKHR}
  alignment _ = #{alignment VkDisplayModePropertiesKHR}

  peek ptr = 
    VkDisplayModePropertiesKHR
       <$> peek (offset @"displayMode" ptr)
       <*> peek (offset @"parameters" ptr)

  poke ptr val = do
    pokeField @"displayMode" ptr val
    pokeField @"parameters" ptr val

instance Offset "displayMode" VkDisplayModePropertiesKHR where
  rawOffset = #{offset VkDisplayModePropertiesKHR, displayMode}

instance Offset "parameters" VkDisplayModePropertiesKHR where
  rawOffset = #{offset VkDisplayModePropertiesKHR, parameters}

#else

module Vulkan.Types.Struct.VkDisplayModePropertiesKHR where

#endif