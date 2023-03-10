{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkCalibratedTimestampInfoEXT}
  alignment _ = #{alignment VkCalibratedTimestampInfoEXT}

  peek ptr = 
    VkCalibratedTimestampInfoEXT
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"timeDomain" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"timeDomain" ptr val

instance Offset "sType" VkCalibratedTimestampInfoEXT where
  rawOffset = #{offset VkCalibratedTimestampInfoEXT, sType}

instance Offset "pNext" VkCalibratedTimestampInfoEXT where
  rawOffset = #{offset VkCalibratedTimestampInfoEXT, pNext}

instance Offset "timeDomain" VkCalibratedTimestampInfoEXT where
  rawOffset = #{offset VkCalibratedTimestampInfoEXT, timeDomain}

#else

module Vulkan.Types.Struct.VkCalibratedTimestampInfoEXT where

#endif