{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_EXT_calibrated_timestamps

module Vulkan.Types.Struct.VkCalibratedTimestampInfoEXT where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkTimeDomainEXT



data {-# CTYPE "vulkan/vulkan.h" "VkCalibratedTimestampInfoEXT" #-} VkCalibratedTimestampInfoEXT =
       VkCalibratedTimestampInfoEXT
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , timeDomain :: VkTimeDomainEXT
         }

instance Storable VkCalibratedTimestampInfoEXT where
  sizeOf    _ = #{size      struct VkCalibratedTimestampInfoEXT}
  alignment _ = #{alignment struct VkCalibratedTimestampInfoEXT}

  peek ptr = 
    VkCalibratedTimestampInfoEXT
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"timeDomain" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"timeDomain" ptr val

instance Offset "sType" VkCalibratedTimestampInfoEXT where
  rawOffset = #{offset struct VkCalibratedTimestampInfoEXT, sType}

instance Offset "pNext" VkCalibratedTimestampInfoEXT where
  rawOffset = #{offset struct VkCalibratedTimestampInfoEXT, pNext}

instance Offset "timeDomain" VkCalibratedTimestampInfoEXT where
  rawOffset = #{offset struct VkCalibratedTimestampInfoEXT, timeDomain}

#else

module Vulkan.Types.Struct.VkCalibratedTimestampInfoEXT where

#endif