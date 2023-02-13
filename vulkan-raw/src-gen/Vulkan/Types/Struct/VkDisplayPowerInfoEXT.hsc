{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_display_control

module Vulkan.Types.Struct.VkDisplayPowerInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDisplayPowerStateEXT
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPowerInfoEXT" #-} VkDisplayPowerInfoEXT =
       VkDisplayPowerInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , powerState :: VkDisplayPowerStateEXT
         }

instance Storable VkDisplayPowerInfoEXT where
  sizeOf    _ = #{size      VkDisplayPowerInfoEXT}
  alignment _ = #{alignment VkDisplayPowerInfoEXT}

  peek ptr = 
    VkDisplayPowerInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"powerState" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"powerState" ptr val

instance Offset "sType" VkDisplayPowerInfoEXT where
  rawOffset = #{offset VkDisplayPowerInfoEXT, sType}

instance Offset "pNext" VkDisplayPowerInfoEXT where
  rawOffset = #{offset VkDisplayPowerInfoEXT, pNext}

instance Offset "powerState" VkDisplayPowerInfoEXT where
  rawOffset = #{offset VkDisplayPowerInfoEXT, powerState}

#else

module Vulkan.Types.Struct.VkDisplayPowerInfoEXT where

#endif